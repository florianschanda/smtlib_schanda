(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4397439241066825044157440061098895967006683349609375p-139 {- 1980430572745295 -139 (-2.06593e-042)}
; -1.4397439241066825044157440061098895967006683349609375p-139 | == 1.4397439241066825044157440061098895967006683349609375p-139
; [HW: 1.4397439241066825044157440061098895967006683349609375p-139] 

; mpf : + 1980430572745295 -139
; mpfd: + 1980430572745295 -139 (2.06593e-042) class: Pos. norm. non-zero
; hwf : + 1980430572745295 -139 (2.06593e-042) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101110100 #b0111000010010011000011101100110010100111001001001111)))
(assert (= r (fp #b0 #b01101110100 #b0111000010010011000011101100110010100111001001001111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
