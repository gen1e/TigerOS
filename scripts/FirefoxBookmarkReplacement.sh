#!/bin/sh

# This script creates an omni-jar in /tmp/ while being tested. 
# This will remove duplicates
rm -rf /tmp/firefox-omni

#unzip omni.jar
mkdir -p /tmp/firefox-omni
pushd /tmp/firefox-omni
unzip /usr/lib/firefox-6/omni.jar

# Edit the bookmarks.html file
cat > /tmp/firefox-omni/defaults/profile/bookmarks.html <<EOF
<!DOCTYPE NETSCAPE-Bookmark-file-1>
<!-- This is an automatically generated file.
     It will be read and overwritten.
     DO NOT EDIT! -->
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8">
<TITLE>Bookmarks</TITLE>
<H1>Bookmarks</H1>

<DL><p>
    <DT><H3 ADD_DATE="961112773" LAST_MODIFIED="1241209009" PERSONAL_TOOLBAR_FOLDER="true">Bookmarks Toolbar</H3>
    <DL><p>
        <DT><A HREF="http://docs.fedoraproject.org/" ADD_DATE="1158286602" LAST_MODIFIED="1176675660" LAST_CHARSET="UTF-8">Fedora Documentation</A>
        <DD>Fedora Documentation.

        <DT><H3 ADD_DATE="1130967903" LAST_MODIFIED="1241211003">RIT Links</H3>
        <DL><p>
            <DT><A HREF="http://rit.edu/" ADD_DATE="1158286779" LAST_MODIFIED="1176675285" LAST_CHARSET="UTF-8">RIT Homepage</A>
            <DD>RIT Homepage.
            <DT><A HREF="http://mycourses.rit.edu/" ADD_DATE="1158286779" LAST_MODIFIED="1176675285" LAST_CHARSET="UTF-8">Mycourses</A>
            <DD>Mycourses Homepage.
            <DT><A HREF="http://schedule.csh.rit.edu/" ADD_DATE="1158286779" LAST_MODIFIED="1176675285" LAST_CHARSET="UTF-8">RIT Schedule Maker</A>
            <DD>Create a class schedule.
            <DT><A HREF="http://infocenter.rit.edu" ADD_DATE="1158286779" LAST_MODIFIED="1176675285" LAST_CHARSET="UTF-8">RIT Infocenter</A>
            <DD>Class Registration, Academic Services, and more.
        </DL><p>

        <DT><H3 ADD_DATE="1130967903" LAST_MODIFIED="1241211003">Fedora Project</H3>
        <DL><p>
            <DT><A HREF="http://fedoraproject.org/" ADD_DATE="1158286779" LAST_MODIFIED="1176675285" LAST_CHARSET="UTF-8">Fedora Project</A>
            <DD>Home of the Fedora Project.
            <DT><A HREF="http://forums.fedoraforum.org/" ADD_DATE="1130967896" LAST_MODIFIED="1176675301" LAST_CHARSET="ISO-8859-1">Fedora Forum</A>
            <DD>Fedora Forums for community interaction.
            <DT><A HREF="http://fedorasolved.org/" ADD_DATE="1130967896" LAST_MODIFIED="1176675301" LAST_CHARSET="ISO-8859-1">Fedora Solved</A>
            <DD>Community answers to community questions.
            <DT><A HREF="http://fedoraproject.org/wiki/FWN/LatestIssue" ADD_DATE="1176675071" LAST_MODIFIED="1176675310" LAST_CHARSET="ISO-8859-1">Fedora Weekly News</A>
            <DD>Fedora Weekly News.
            <DT><A HREF="http://planet.fedoraproject.org/" ADD_DATE="1176675201" LAST_MODIFIED="1241208858" LAST_CHARSET="UTF-8">Planet Fedora</A>
            <DD>Blogs by Fedora contributors.
            <DT><A HREF="http://fedoraproject.org/en/join-fedora" ADD_DATE="1241209418" LAST_MODIFIED="1241209719">Join Fedora!</A>
            <DD>Join the Fedora Project!
        </DL><p>
      
        <DT><H3 ADD_DATE="1176674113" LAST_MODIFIED="1241208802">Red Hat</H3>
        <DL><p>
            <DT><A HREF="http://www.redhat.com/" ADD_DATE="1176674148" LAST_MODIFIED="1176674158" LAST_CHARSET="ISO-8859-1">Red Hat</A>
            <DD>Home of Red Hat, sponsor of the Fedora Project.
            <DT><A HREF="http://www.jboss.org/" ADD_DATE="1176674189" LAST_MODIFIED="1176674200" LAST_CHARSET="UTF-8">JBoss</A>
            <DD>Home of the JBoss community, sponsored by Red Hat.
            <DT><A HREF="http://opensource.com/" ADD_DATE="1269287471" LAST_MODIFIED="1176674200">OpenSource.com</A>
            <DD>Open Source applied to the world.
            <DT><A HREF="http://theopensourceway.org/" ADD_DATE="1269287471" LAST_MODIFIED="1176674200">The Open Source Way</A>
            <DD>Community authored open source best practices.
        </DL><p>

        <DT><H3 ADD_DATE="1176674388" LAST_MODIFIED="1241209425">Free Content</H3>
        <DL><p>
            <DT><A HREF="http://www.wikipedia.org/" ADD_DATE="1176674401" LAST_MODIFIED="1176675382" LAST_CHARSET="UTF-8">Wikipedia</A>
            <DD>Collaborative encycolpedia.
            <DT><A HREF="http://librivox.org/" ADD_DATE="1241209006" LAST_MODIFIED="1241209033">LibriVox</A>
            <DD>Freely licensed audio books.
            <DT><A HREF="http://www.openclipart.org/" ADD_DATE="1269287471" LAST_MODIFIED="1241209033">Open Clip Art</A>
            <DD>Freely licensed clip art.
            <DT><A HREF="http://www.freesound.org/" ADD_DATE="1269287471" LAST_MODIFIED="1241209033">Free Sound</A>
            <DD>Freely licensed sound.
            <DT><A HREF="http://creativecommons.org/" ADD_DATE="1176674776" LAST_MODIFIED="1176675626" LAST_CHARSET="UTF-8">Creative Commons</A>
            <DD>Free licenses for creative work.
        </DL><p>
    </DL><p>
</DL><p>
EOF

# Zip things back up
# >/dev/null will mute output
zip -9 -r omni.jar * >/dev/null

mv omni.jar /usr/lib/firefox-6/omni.jar