(set-option :produce-assignments true)
(set-logic QF_UF)
(declare-const p Bool) 
(declare-const q Bool) 
(declare-const t Bool) 
(declare-const s Bool)
(declare-const z1 Bool)
(declare-const z2 Bool)
(declare-const z3 Bool)
(declare-const z4 Bool)
(declare-const z5 Bool)
(assert (and 
(or (not s) (not p) z1) 
(or (not s) (not p) (not z1)) 
(or t (not s) (not p))  
(or (not s) q z2) 
(or (not s) q (not z2))
(or t (not s) q) 
(or (not s) z3 z4) 
(or (not s) (not z3) z4) 
(or (not s) z3 (not z4)) 
(or (not s) (not z3) (not z4)) 
(or t (not s) z5) 
(or t (not s) (not z5)) 
(or (not s) (not t) q)  
))
(check-sat)
(get-model)
(exit)