(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00100101100001010100111)))
;; x should be Float32(0x8012C2A7 [Rational(-1229479, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x8064D575)))
;; y should be Float32(0x8064D575 [Rational(-6608245, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.add RNA x y)))
(assert (= result (fp #b1 #b00000000 #b11101111001100000011100)))
(check-sat)
(exit)
