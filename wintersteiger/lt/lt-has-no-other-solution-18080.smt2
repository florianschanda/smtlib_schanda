(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9829561622588294245161932849441654980182647705078125p-423 {- 4426841006070397 -423 (-9.1543e-128)}
; Y = -1.01275289597125350837814039550721645355224609375p52 {- 57433937544032 52 (-4.56103e+015)}
; -1.9829561622588294245161932849441654980182647705078125p-423 < -1.01275289597125350837814039550721645355224609375p52 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001011000 #b1111101110100011000000111101101001001101101001111101)))
(assert (= y (fp #b1 #b10000110011 #b0000001101000011110001100001011100100000001101100000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
