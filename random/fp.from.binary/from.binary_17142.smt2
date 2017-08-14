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
(assert (= x (fp #b1 #b10010001 #b00110011011111001110000)))
;; x should be Float32(0xC899BE70 [Rational(-629735, 2), -314867.500000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b11001000100110011011111001110000

(assert (= y #b11001000100110011011111001110000))
(check-sat)
(exit)
