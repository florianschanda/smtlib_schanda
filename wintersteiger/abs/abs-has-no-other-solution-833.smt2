(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7775195485339840839600356048322282731533050537109375p612 {+ 3501636749050927 612 (3.02115e+184)}
; 1.7775195485339840839600356048322282731533050537109375p612 | == 1.7775195485339840839600356048322282731533050537109375p612
; [HW: 1.7775195485339840839600356048322282731533050537109375p612] 

; mpf : + 3501636749050927 612
; mpfd: + 3501636749050927 612 (3.02115e+184) class: Pos. norm. non-zero
; hwf : + 3501636749050927 612 (3.02115e+184) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001100011 #b1100011100001011100001010110100011110100010000101111)))
(assert (= r (fp #b0 #b11001100011 #b1100011100001011100001010110100011110100010000101111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
