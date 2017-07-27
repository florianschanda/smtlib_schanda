(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary -subnormal)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b01100100001010110100101)))
;; x should be Float32(0x803215A5 [Rational(-3282341, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b10000000001100100001010110100101

(assert (= y #b10000000001100100001010110100101))
(check-sat)
(exit)
