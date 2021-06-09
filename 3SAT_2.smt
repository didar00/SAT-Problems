(set-option :produce-assignments true)
(set-logic QF_UF)
(declare-const p Bool)
(declare-const q Bool) 
(declare-const r Bool) 
(declare-const s Bool)
(declare-const z1 Bool)
(declare-const z2 Bool)
(declare-const z3 Bool)
(declare-const z4 Bool)
(declare-const z5 Bool)
(declare-const z6 Bool)
(assert (and (or p (not r) z1) (or p (not r) (not z1)) 
(or p (not p) z2) (or p (not p) (not z2)) 
(or r (not r) z3) (or r (not r) (not z3)) 
(or r (not p) z4) (or r (not p) (not z4)) 
(or (not q) r z5) (or (not q) r (not z5)) 
(or r (not s) z6) (or r (not s) (not z6))
))
(check-sat)
(get-model)
(exit)