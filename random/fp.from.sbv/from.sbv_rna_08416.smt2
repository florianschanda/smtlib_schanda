(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b1110011100111101110111111000010010111001101001100001011011000100))
;; x should be -1784024116225501500

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RNA x)))
(assert (fp.eq r ((_ to_fp 11 53) #xC3B8C2207B4659E9)))
(check-sat)
(exit)
