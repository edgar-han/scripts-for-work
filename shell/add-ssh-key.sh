#!/bin/bash

SSH_KEY_STR='ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDfLIgXD1RuMs1eh6FphGTNgtKjBpEEtj8EIr5TZMqZBWnpUFq/aAXAvUthl59rS7M+hnE4JDaadYRCGqot3eGuUa5WkfTFpTvSnMUwoEUwMwHYqOBmidLQkbTcpVpyONB+tLY7hN6pu0nWuA299fqZ9BYrmmnQvN2QaTUO5mGao7lbUr9MIUmcsyWDND0uGK5dIc8H8EwR/sm+2FcBFrnNS1wrBORtooRfU8SaV8K7mbh97IcpQv1N7s1oiWJdgB0YYrHAIOZ473t/hgiUrc/a0HeNtjYwkRoyoRIeIJU3XlMaguvj8sskhBJRU3WXqT3nW0HQ335urtWCLh8msuaZ edgar.han@90-40C9JG5M-3MS'

echo $SSH_KEY_STR >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
