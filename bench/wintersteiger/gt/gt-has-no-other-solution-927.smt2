(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5159572898085780234822550482931546866893768310546875p868 {- 2323665058121003 868 (-2.98348e+261)}
; Y = -1.867094191801658809026775998063385486602783203125p-358 {- 3905045079093072 -358 (-3.18e-108)}
; -1.5159572898085780234822550482931546866893768310546875p868 > -1.867094191801658809026775998063385486602783203125p-358 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101100011 #b1000010000010101110001101110010111011100010100101011)))
(assert (= y (fp #b1 #b01010011001 #b1101110111111001111000101000110001010110111101010000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
