(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (= x #b00011111100011000010110000110010010110100011010011001001000010011101011101110101010111000110010110011010011011110000001110000001))
;; x should be 41933885844875418718478008957306602369

(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (fp.eq r (fp #b0 #b11111 #b0000000000)))
(check-sat)
(exit)
