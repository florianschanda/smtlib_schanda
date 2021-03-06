(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b1101011000111100110100101011100101000000000001011000101110011011))
;; x should be -3009298757905445989

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RNA x)))
(assert (fp.eq r ((_ to_fp 8 24) #xDE270CB5)))
(check-sat)
(exit)
