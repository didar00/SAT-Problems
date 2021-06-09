(set-option :produce-assignments true)
(set-logic QF_UF)
(declare-const p Bool) (declare-const q Bool) (declare-const r Bool) (declare-const s Bool)
(assert (and (or p (not r)) (or p (not p)) (or r (not r)) (or r (not p)) (or (not q) r) (or r (not s))))
(check-sat)
(get-model)
(exit)

; (model
;  (define-fun p () Bool
;    false)
;  (define-fun q () Bool
;    false)
;  (define-fun s () Bool
;    false)
;  (define-fun r () Bool
;    false)
;)