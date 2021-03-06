(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvule x #b11111100010110111000110011010001100101111010101110100100000010000010010100100011110100000100000111101100010110111100111100001000))
;; x should be 335440810094895683417592125785424776968

(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.leq r (fp #b0 #b11111110 #b11111000101101110001100)))
(check-sat)
(exit)
