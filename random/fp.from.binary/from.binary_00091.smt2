(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary -normal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b11010010101101001111110010110001))
;; x should be d2b4fcb1

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0xD2B4FCB1 [Rational(-388666785792), -388666785792.000000])

(assert (= y (fp #b1 #b10100101 #b01101001111110010110001)))
(check-sat)
(exit)
