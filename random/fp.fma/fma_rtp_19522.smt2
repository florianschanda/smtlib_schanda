(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8DCE61FA)))
;; x should be Float32(0x8DCE61FA [Rational(-6762749, 5316911983139663491615228241121378304), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x48B22E50)))
;; y should be Float32(0x48B22E50 [Rational(729829, 2), 364914.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x005426DB)))
;; z should be Float32(0x005426DB [Rational(5514971, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result (fp #b1 #b00101110 #b00011111010010101110101)))
(check-sat)
(exit)
