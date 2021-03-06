(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xB1F0B367)))
;; x should be Float32(0xB1F0B367 [Rational(-15774567, 2251799813685248), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x7FBC7704)))
;; y should be Float32(NaN)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x57DFF4BC)))
;; z should be Float32(0x57DFF4BC [Rational(492484438261760), 492484438261760.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result (_ NaN 8 24)))
(check-sat)
(exit)
