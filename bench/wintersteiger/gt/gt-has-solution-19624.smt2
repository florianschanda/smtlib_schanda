(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8901169234137398245110261996160261332988739013671875p-1010 {- 4008730244602291 -1010 (-1.72263e-304)}
; Y = 1.31162495279914992352132685482501983642578125p-634 {+ 1403434021305600 -634 (1.83989e-191)}
; -1.8901169234137398245110261996160261332988739013671875p-1010 > 1.31162495279914992352132685482501983642578125p-634 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000001101 #b1110001111011110101100111110001110101101100110110011)))
(assert (= y (fp #b0 #b00110000101 #b0100111111000110101001110010010011100011110100000000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
