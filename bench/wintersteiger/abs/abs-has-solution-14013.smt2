(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0746086001378822860630180002772249281406402587890625p-951 {- 336007263779601 -951 (-5.64579e-287)}
; -1.0746086001378822860630180002772249281406402587890625p-951 | == 1.0746086001378822860630180002772249281406402587890625p-951
; [HW: 1.0746086001378822860630180002772249281406402587890625p-951] 

; mpf : + 336007263779601 -951
; mpfd: + 336007263779601 -951 (5.64579e-287) class: Pos. norm. non-zero
; hwf : + 336007263779601 -951 (5.64579e-287) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001001000 #b0001001100011001100011001001100110010111101100010001)))
(assert (= r (fp #b0 #b00001001000 #b0001001100011001100011001001100110010111101100010001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
