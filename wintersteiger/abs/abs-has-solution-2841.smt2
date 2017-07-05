(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.265085281896457303218994638882577419281005859375p-748 {+ 1193837976770288 -748 (8.54443e-226)}
; 1.265085281896457303218994638882577419281005859375p-748 | == 1.265085281896457303218994638882577419281005859375p-748
; [HW: 1.265085281896457303218994638882577419281005859375p-748] 

; mpf : + 1193837976770288 -748
; mpfd: + 1193837976770288 -748 (8.54443e-226) class: Pos. norm. non-zero
; hwf : + 1193837976770288 -748 (8.54443e-226) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100010011 #b0100001111011100101000010000100001100101011011110000)))
(assert (= r (fp #b0 #b00100010011 #b0100001111011100101000010000100001100101011011110000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
