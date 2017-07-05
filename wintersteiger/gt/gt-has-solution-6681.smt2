(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5779269790225882719170158452470786869525909423828125p-47 {- 2602751727373485 -47 (-1.12118e-014)}
; Y = -1.713551455169120885102529427967965602874755859375p-390 {- 3213550067609328 -390 (-6.79515e-118)}
; -1.5779269790225882719170158452470786869525909423828125p-47 > -1.713551455169120885102529427967965602874755859375p-390 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111010000 #b1001001111110011000001011100001001100000110010101101)))
(assert (= y (fp #b1 #b01001111001 #b1011011010101011010011101110001111110110111011110000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
