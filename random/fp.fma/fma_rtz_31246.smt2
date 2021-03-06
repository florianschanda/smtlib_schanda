(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAD5B52F)))
;; x should be Float32(0xCAD5B52F [Rational(-14005551, 2), -7002775.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xC99FB05C)))
;; y should be Float32(0xC99FB05C [Rational(-2616343, 2), -1308171.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x80000000)))
;; z should be Float32(-zero)

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result ((_ to_fp 8 24) #x55054EC1)))
(check-sat)
(exit)
