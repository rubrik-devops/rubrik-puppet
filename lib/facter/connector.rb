Facter.add(:rubrik_connector) do
  setcode do
    case Facter.value(:kernel) 
    when 'windows' || 'Windows'
      conn_status = (system( "powershell (Get-Service 'Rubrik Backup Service' -ErrorAction SilentlyContinue).status") )
      puts "!" + conn_status _ "!"
      if conn_status == "Running"
        true
      else
        false
      end
    end
  end
end
