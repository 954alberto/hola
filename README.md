# special-k

# 1 
I tested different base images, debian-slim and alpine but:
- debian had many vulnerabilities reported by trivy 2 of them critical, 
- the binary of litecoind would not start on alpine.

Fedora:36 had no known vulnerabilities by trivy or grype 
- https://github.com/anchore/grype
- https://github.com/aquasecurity/trivy

And it runs the binary.

I wrote the Dockerfile from scratch but looked for references in stackoverflow.

# 2 
I copied the example nginx statefulset from the kubernetes documentation and adapted the necesary parts like removing ports replacing the image and adding `securityContext.fsGroup: 500` to allow the user litecoin to write to the volume.

# 3 
I took a gitlab-ci file that I wrote at work and expanded/replaced a bit some parts.
The original still is in use in production.

# 4
I did not know what to choose here so I kept it simple. 
I found some CSV file and tested out few options with awk.

# 5 
Very tempted to use rust here just for the sake of it.... but opted for a python script using pandas.

# 6 
Just a terraform module.

# tooling
I added a Dockerfile for a tooling image.