(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9331709914770882630108417288283817470073699951171875p587 {+ 4202628529489171 587 (9.79214e+176)}
; Y = 1.824913213851182991476207462255842983722686767578125p-102 {+ 3715078842513186 -102 (3.59901e-031)}
; 1.9331709914770882630108417288283817470073699951171875p587 < 1.824913213851182991476207462255842983722686767578125p-102 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001001010 #b1110111011100100010010110100100111111000010100010011)))
(assert (= y (fp #b0 #b01110011001 #b1101001100101101100000110010101110000111011100100010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
