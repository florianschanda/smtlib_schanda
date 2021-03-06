(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11111111 #b00000000000000000000000)))
;; x should be Float32(+oo)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x9951C4F1)))
;; y should be Float32(0x9951C4F1 [Rational(-13747441, 1267650600228229401496703205376), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x47BE9DC0)))
;; z should be Float32(0x47BE9DC0 [Rational(195191, 2), 97595.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result ((_ to_fp 8 24) #xFF800000)))
(check-sat)
(exit)
