(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3259414570274066225152864717529155313968658447265625p653 {+ 1467909824413225 653 (4.95577e+196)}
; Y = -1.2563148072703465008004286573850549757480621337890625p762 {- 1154339270512273 762 (-3.04758e+229)}
; 1.3259414570274066225152864717529155313968658447265625p653 > -1.2563148072703465008004286573850549757480621337890625p762 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010001100 #b0101001101110000111001100011101001010111111000101001)))
(assert (= y (fp #b1 #b11011111001 #b0100000110011101110110001110001010110100111010010001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
