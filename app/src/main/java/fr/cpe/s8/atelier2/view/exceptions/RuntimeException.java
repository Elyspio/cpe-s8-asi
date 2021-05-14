package fr.cpe.s8.atelier2.view.exceptions;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

public class RuntimeException
{
    @NotEmpty
    private String timestamp;
    @NotNull
    private Long status;
    @NotEmpty
    private String error;
    @NotEmpty
    private String message;
    @NotEmpty
    private String path;

    public String getTimestamp()
    {
        return timestamp;
    }

    public void setTimestamp(String value)
    {
        this.timestamp = value;
    }

    public long getStatus()
    {
        return status;
    }

    public void setStatus(long value)
    {
        this.status = value;
    }

    public String getError()
    {
        return error;
    }

    public void setError(String value)
    {
        this.error = value;
    }

    public String getMessage()
    {
        return message;
    }

    public void setMessage(String value)
    {
        this.message = value;
    }

    public String getPath()
    {
        return path;
    }

    public void setPath(String value)
    {
        this.path = value;
    }
}

