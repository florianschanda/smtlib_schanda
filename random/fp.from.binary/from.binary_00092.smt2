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
(assert (= x (fp #b1 #b10100101 #b01101001111110010110001)))
;; x should be Float32(0xD2B4FCB1 [Rational(-388666785792), -388666785792.000000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b11010010101101001111110010110001

(assert (= y #b11010010101101001111110010110001))
(check-sat)
(exit)
