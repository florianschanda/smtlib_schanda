(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8219673141943093508388074042159132659435272216796875p-473 {- 3701811689916219 -473 (-7.47055e-143)}
; -1.8219673141943093508388074042159132659435272216796875p-473 | == 1.8219673141943093508388074042159132659435272216796875p-473
; [HW: 1.8219673141943093508388074042159132659435272216796875p-473] 

; mpf : + 3701811689916219 -473
; mpfd: + 3701811689916219 -473 (7.47055e-143) class: Pos. norm. non-zero
; hwf : + 3701811689916219 -473 (7.47055e-143) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000100110 #b1101001001101100011100110010110011011000011100111011)))
(assert (= r (fp #b0 #b01000100110 #b1101001001101100011100110010110011011000011100111011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
