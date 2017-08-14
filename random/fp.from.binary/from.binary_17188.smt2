(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary -normal)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xAF8C8E9B)))
;; x should be Float32(0xAF8C8E9B [Rational(-9211547, 36028797018963968), -0.000000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b10101111100011001000111010011011

(assert (= y #b10101111100011001000111010011011))
(check-sat)
(exit)
