(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC9642BC8)))
;; x should be Float32(0xC9642BC8 [Rational(-1869177, 2), -934588.500000])

(declare-const y Float32)
(assert (= y (_ -zero 8 24)))
;; y should be Float32(-zero)

(declare-const z Float32)
(assert (= z (fp #b1 #b01011011 #b10101100100011001110011)))
;; z should be Float32(0xADD64673 [Rational(-14042739, 576460752303423488), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result (fp #b1 #b01011011 #b10101100100011001110011)))
(check-sat)
(exit)
