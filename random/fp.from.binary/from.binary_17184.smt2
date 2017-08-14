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
(assert (= x (fp #b1 #b11100000 #b10000000100001010000101)))
;; x should be Float32(0xF0404285 [Rational(-238006156258140161534007967744), -238006156258140161534007967744.000000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b11110000010000000100001010000101

(assert (= y #b11110000010000000100001010000101))
(check-sat)
(exit)
