(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b01011111001001010010011)))
;; x should be Float32(0xCAAF9293 [Rational(-11506323, 2), -5753161.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 368202355.0 64.0)))))
;; w should be Float32(0xCAAF9294 [Rational(-5753162), -5753162.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
