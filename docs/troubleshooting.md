# Troubleshooting Guide

## Nginx Configuration Test Failed

**Problem**

`sudo nginx -t` reports an error.

**Solution**

* Review the line number mentioned in the error message.
* Check for missing braces (`{}`), misplaced directives, or syntax errors.
* Fix the issue and run `sudo nginx -t` again before reloading Nginx.

---

## Website Not Loading

**Checks**

* Verify Nginx is running:

  ```
  sudo systemctl status nginx
  ```

* Confirm the website files exist in the configured document root.

* Test locally:

  ```
  curl http://localhost
  ```

---

## Permission Issues

**Checks**

Verify file ownership and permissions:

```
ls -l
```

Correct ownership if necessary:

```
sudo chown
```

Correct permissions if necessary:

```
chmod
```

---

## Deployment Script Failed

**Checks**

* Verify the script has execute permission:

  ```
  chmod +x scripts/deploy.sh
  ```

* Review the deployment log.

* Confirm the source directory exists.
