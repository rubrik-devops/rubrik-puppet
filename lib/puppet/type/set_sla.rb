Puppet::Type.newtype(:set_sla) do
  desc "Update SLA Setting"
  newparam(:sla_domain) do
    desc "The desired SLA Domain is #{sla_domain}"
    end
end
