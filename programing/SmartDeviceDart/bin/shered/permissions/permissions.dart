

// This class save the state of each permission

class Permission{
  bool _read = false;
  bool _write = false;
  bool _execute = false;

  Permission(this._read, this._write, this._execute);


  // Getters
  bool getRead() => this._read;

  bool getWrite() => this._write;

  bool getExecute() => this._execute;


  // TODO: check if user have permissions to change permissions
  // Setters
  void setRead(bool read) => this._read = read;

  void setWrite(bool write) => this._write = write;

  void setExecute(bool execute) => this._execute = execute;
}