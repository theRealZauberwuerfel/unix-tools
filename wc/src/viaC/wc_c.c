int wc(char *p, int len) {
    int c;
    for (c = 0; len--; ++p)
        if (*p == '\n')
            ++c;
    return c;
}
