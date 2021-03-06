(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x807FFFFF)))
;; x should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x64158417)))
;; y should be Float32(0x64158417 [Rational(11032331773280776093696), 11032331773280776093696.000000])

(declare-const result Float32)
(assert (= result (fp.mul RTP x y)))
(assert (not (= result (fp #b1 #b01001010 #b00101011000010000010101))))
(check-sat)
(exit)
