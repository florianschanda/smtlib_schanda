(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (= x #b01110111110101011000111101010010110110111011000111100011111011000101110010110001000001011011100000000100010000001001110111000011))
;; x should be 159286997678547828877225041248861068739

(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.eq r ((_ to_fp 8 24) #x7EEFAB1F)))
(check-sat)
(exit)
