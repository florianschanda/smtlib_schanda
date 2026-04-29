(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2781265850989427246275909055839292705059051513671875p423 {+ 1252570785013427 423 (2.76861e+127)}
; Y = 1.9825225355492748224861543349106796085834503173828125p-843 {+ 4424888124982829 -843 (3.38012e-254)}
; 1.2781265850989427246275909055839292705059051513671875p423 = 1.9825225355492748224861543349106796085834503173828125p-843 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110100110 #b0100011100110011010011011100101100100101111010110011)))
(assert (= y (fp #b0 #b00010110100 #b1111101110000110100110001100110111000100011000101101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
