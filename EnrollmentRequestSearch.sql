
select * 
from ps_enrl_req_header h
where h.enrl_request_id = ''
order by h.dttm_stamp_sec desc;

select * 
from ps_enrl_req_detail d
where d.emplid = ''
order by d.dttm_stamp_sec desc;

select * 
from ps_enrl_msg_log m
where m.enrl_request_id = ''
order by m.dttm_stamp_sec desc;

select * 
from ps_enrl_msg_parm p
where p.enrl_request_id = ''
order by p.dttm_stamp_sec desc;

select * 
from ps_enrl_req_header h, ps_enrl_req_detail d
where d.emplid = ''
and h.enrl_request_id = d.enrl_request_id
order by d.dttm_stamp_sec desc;

select * 
from ps_enrl_req_detail d, ps_enrl_msg_log m--, ps_enrl_msg_parm p
where d.emplid = ''
and d.enrl_request_id = m.enrl_request_id
and d.enrl_req_detl_seq = m.enrl_req_detl_seq
order by d.dttm_stamp_sec desc;
