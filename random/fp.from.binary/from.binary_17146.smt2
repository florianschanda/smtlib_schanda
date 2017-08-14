(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary -halfpoint)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x (fp #b1 #b10010011 #b10110010011111000010100)))
;; x should be Float32(0xC9D93E14 [Rational(-3559301, 2), -1779650.500000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b11001001110110010011111000010100

(assert (= y #b11001001110110010011111000010100))
(check-sat)
(exit)
