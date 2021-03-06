(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(-halfpoint) -> Float16
(declare-const x Float32)
(assert (= x (fp #b1 #b10010010 #b10110110001100000111000)))
;; x should be Float32(0xC95B1838 [Rational(-1794823, 2), -897411.500000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTN x)))
;; y should be Float16(-oo)

(declare-const z Float16)
(assert (= z ((_ to_fp 5 11) #xFC00)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
