(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b11111111111111111111111)))
;; x should be Float32(0x007FFFFF [Rational(8388607, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b10010100101010010100111)))
;; y should be Float32(0x004A54A7 [Rational(4871335, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x7A86156D)))
;; z should be Float32(0x7A86156D [Rational(348101172757528821057393548341542912), 348101172757528821057393548341542912.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result (fp #b0 #b11110101 #b00001100001010101101110))))
(check-sat)
(exit)
