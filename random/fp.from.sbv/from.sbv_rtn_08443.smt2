(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (bvsge x #b1101111100010101100111101010111000010110011111101110011011110100))
;; x should be -2371815158201784588

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RTN x)))
(assert (fp.geq r (fp #b1 #b10111100 #b00000111010100110000110)))
(check-sat)
(exit)
