class php 
{
    $packages = [
        "php5", 
        "php5-cli", 
        "php5-mysql", 
        "php-pear", 
        "php5-dev", 
        "php-apc", 
        "php5-mcrypt", 
        "php5-gd", 
        "php5-curl",
        "php5-sqlite"
    ]
    
    package 
    { 
        $packages:
            ensure  => present,
            require => Exec['apt-get update']
    }
  
    exec 
    { 
        "sed -i 's|#|//|' /etc/php5/cli/conf.d/mcrypt.ini":
  		    require => Package['php5'],
    }
}
