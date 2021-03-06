Zip = require "./fs/zip"
Paths = require "./paths"

class Packager
  constructor: ()->
    @zip = new Zip Paths.application.distDir, Paths.temporaryZip

  create: ->
    @zipDistPath()

  zipDistPath: ->
    @zip.create (timestamp) =>
      @latestZipTimestamp = timestamp

module.exports = Packager