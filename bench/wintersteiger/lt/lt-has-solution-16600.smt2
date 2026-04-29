(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3470850056048877529946139475214295089244842529296875p-988 {- 1563131901908059 -988 (-5.14943e-298)}
; Y = -1.4087641245412658719260434736497700214385986328125p-858 {- 1840909958966472 -858 (-7.32997e-259)}
; -1.3470850056048877529946139475214295089244842529296875p-988 < -1.4087641245412658719260434736497700214385986328125p-858 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000100011 #b0101100011011010100100000001110000000001010001011011)))
(assert (= y (fp #b1 #b00010100101 #b0110100010100100110001000000001010101110110011001000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
