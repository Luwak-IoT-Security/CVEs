cat > README.md <<- EOM
# LuwakLab CVE PoC Exploits

LuwakLab CVE PoC Exploits offers a curated collection of expertly crafted proof-of-concept exploit scripts. We focus on IoT security and consistently demonstrate vulnerabilities across various CVEs. Our mission is to raise security awareness and empower organizations to safeguard their digital assets. Join us for cutting-edge insights and actionable security solutions.

EOM

for i in $(find database -name 'README.md' | sort -r); do
    cve_text=$(cat $i | grep '^# CVE' | cut -d ' ' -f 2-)
    directory=$(echo $i | cut -d '/' -f 2)
    echo "* [$cve_text](database/$directory/)" >> README.md
done
