(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA3BA8C2)))
;; x should be Float32(0xCA3BA8C2 [Rational(-6149217, 2), -3074608.500000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b00000000000000000000000)))
;; y should be Float32(+zero)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xC96307F8)))
;; z should be Float32(0xC96307F8 [Rational(-1859839, 2), -929919.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result ((_ to_fp 8 24) #xC96307F8)))
(check-sat)
(exit)
