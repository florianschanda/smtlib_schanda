(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xBB0ECB9D)))
;; x should be Float32(0xBB0ECB9D [Rational(-9358237, 4294967296), -0.002179])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x7F800000)))
;; y should be Float32(+oo)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xF08C5ACA)))
;; z should be Float32(0xF08C5ACA [Rational(-347501268934265327324208562176), -347501268934265327324208562176.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result (_ -oo 8 24)))
(check-sat)
(exit)
