(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (_ +zero 8 24)))
;; x should be Float32(+zero)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x4A6FDDF6)))
;; y should be Float32(0x4A6FDDF6 [Rational(7859963, 2), 3929981.500000])

(declare-const result Float32)
(assert (= result (fp.mul RTP x y)))
(assert (= result ((_ to_fp 8 24) #x00000000)))
(check-sat)
(exit)
