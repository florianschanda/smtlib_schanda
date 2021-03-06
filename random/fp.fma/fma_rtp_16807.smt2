(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b01110011001011100000011)))
;; x should be Float32(0x00399703 [Rational(3774211, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010011 #b00100100000101110000100)))
;; y should be Float32(0xC9920B84 [Rational(-2392801, 2), -1196400.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xCAC1A427)))
;; z should be Float32(0xCAC1A427 [Rational(-12690471, 2), -6345235.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result ((_ to_fp 8 24) #xCAC1A427)))
(check-sat)
(exit)
