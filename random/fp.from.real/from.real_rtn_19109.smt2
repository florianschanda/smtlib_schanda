(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b10110110 #b01011011100001010100011)))
;; x should be Float32(0xDB2DC2A3 [Rational(-48909176306401280), -48909176306401280.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- 42632647080737529.0))))
;; w should be Float32(0xDB17762B [Rational(-42632648538980352), -42632648538980352.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
