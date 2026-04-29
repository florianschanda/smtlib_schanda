(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.153175843345294548925039634923450648784637451171875p725 {+ 689842671012030 725 (2.03537e+218)}
; 1.153175843345294548925039634923450648784637451171875p725 | == 1.153175843345294548925039634923450648784637451171875p725
; [HW: 1.153175843345294548925039634923450648784637451171875p725] 

; mpf : + 689842671012030 725
; mpfd: + 689842671012030 725 (2.03537e+218) class: Pos. norm. non-zero
; hwf : + 689842671012030 725 (2.03537e+218) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011010100 #b0010011100110110100010000011010110110100100010111110)))
(assert (= r (fp #b0 #b11011010100 #b0010011100110110100010000011010110110100100010111110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
