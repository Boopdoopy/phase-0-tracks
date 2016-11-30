Robert Richardson

What are some of the key design philosophies of the Linux operating system?
-DIY(they built the entire kernel from scratch??????!!!)
-Feature inclusive (include unless it breaks something!)
-by Dev's for Dev's
-Barely centralized


In your own words, what is a VPS (virtual private server)?
-It is a hunk of memory and allocated bandwidth on a server somewhere that has an OS installed.

What, according to your research, are the advantages of using a VPS?
-Price
-Scope(only pay for what features you need)
-Scalable
-Root access(whereas with shared hosting often there are limitations imposed for security/other customers data's safeties sake)




Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?

-Because it removes the security built into the design of the OS. By separating users from the internal aspects of a given machine problems[whether application errors, user error (oops, fat fingered enter with that rm -rf...), or malicious processes] will be contained by the permissions in place. A machine is similar to a pediatric office the sick and well waiting rooms are separate and no one waits where the tools are sterilized.