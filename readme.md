# Test-First-Ruby-Mysolution

This is my solution of test first ruby. 
The test files are created years ago and haven't been updated for a long time, so some error will occur when start testing. Make some changes as follow:

- change the version of rspect in Gemfile and Rakefile . The default is '>~ 2.x', please remove the version if you are using rspec 3.0 or greater

- rspect change testing grammar on 3.0, please update the testing file of 11. When testing a boolean value, the update format should be `should be_truthy` or `should be_falsey`
